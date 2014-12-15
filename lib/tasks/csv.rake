# encoding: utf-8

require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :create_equipshouses => :environment do

    csv_file_path = 'db/equips_houses.csv'

    i = 0

    CSV.foreach(csv_file_path, :col_sep => ";", :row_sep => :auto, :headers => true) do |row|

            equip = EquipHouse.new({
            :name => row["name"],
            :equipname => row["equipname"],
            :idequip => row["idequip"],
            :street => row["street"],
            :housenumber => row["house"],
           })

              if equip.save
                i = i + 1
                puts "Row added! Number #{i}"
              else
                equip.errors.full_messages.each do |msg|
                  puts msg
                end
              end
           # end
   

    end
  end

  task :add_values => :environment do

    i = 0

    client = TinyTds::Client.new(:username => 'rs-user', :password => 'pQ128mJ', :dataserver => '89.189.1.174', :database => 'VzljotDispatcher1')

sql = "SELECT TOP 10000 [Equip].[ID], [Table_TSRV_026M_ADay].[Time], [Table_TSRV_026M_ADay].[t1], [Table_TSRV_026M_ADay].[t2], 
[Table_TSRV_026M_ADay].[t3], [Table_TSRV_026M_ADay].[t4], [Table_TSRV_026M_ADay].[M1], [Table_TSRV_026M_ADay].[M2], 
[Table_TSRV_026M_ADay].[M3], [Table_TSRV_026M_ADay].[M4], [Table_TSRV_026M_ADay].[W1], [Table_TSRV_026M_ADay].[W2], 
[Table_TSRV_026M_ADay].[W3], [Table_TSRV_026M_ADay].[W4] FROM [VzljotDispatcher1].[dbo].[UserNode], [VzljotDispatcher1].[dbo].[User], 
[VzljotDispatcher1].[dbo].[Node], [VzljotDispatcher1].[dbo].[Equip], [VzljotDispatcher1].[dbo].[Table_TSRV_026M_ADay] WHERE [UserNode].
[IDUser] = 8 AND [User].[ID] = 8 AND [Node].[Id] = [UserNode].[IDNode] AND [Equip].[IdNode] = [Node].[Id] AND [Equip].[ID] = 
[Table_TSRV_026M_ADay].[IDEquip] AND [Table_TSRV_026M_ADay].[Time] >= CONVERT(CHAR(10), (GETDATE()-1), 101)"

client.execute(sql).each do |row|

            value = EquipValue.new({
            :t1 => row["t1"],
            :t2 => row["t2"],
            :t3 => row["t3"],
            :t4 => row["t4"],
            :w1 => row["W1"],
            :w2 => row["W2"],
            :w3 => row["W3"],
            :w4 => row["W4"],
            :m1 => row["M1"],
            :m2 => row["M2"],
            :m3 => row["M3"],
            :m4 => row["M4"],
            :equip_id => row["ID"],
            :date => row["Time"]          
           })

              if value.save
                i = i + 1
                puts "Row added! Number #{i}"
              else
                value.errors.full_messages.each do |msg|
                  puts msg
                end
              end
            end
  end

end