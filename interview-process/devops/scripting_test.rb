# Scripting task for cloud operations engineers
require 'csv'

csv_string = CSV.generate(
    write_headers: true,
    headers: ["name", "email", "cellphone"]
) do |csv|
  csv << ["saul", "saul@wizeline.com", "11111111"]
  csv << ["leon", "leon@wizeline.com", "22222222"]
  csv << ["carlos", "carlos@wizeline.com", "33333333"]
end
File.open("example.csv", "w") { |f| f.write csv_string }
puts csv_string

# Transpose the CSV file to it is:
# name:saul:leon:carlos
# email:saul@wizeline.com:leon@wizeline.com:carlos@wizeline.com
# cellphone:11111111:22222222:33333333

# # Bash version
# cat <<EOF > example.csv
# name,email,cellphone
# saul,saul@wizeline.com,11111111
# leon,leon@wizeline.com,22222222
# carlos,carlos@wizeline.com,33333333
# EOF
# cat example.csv

# Python version
# import csv

# csv_file = 'example.csv'
# csv_fields = ['name', 'email', 'cellphone']
# csv_rows = [
#   ['saul', 'saul@wizeline.com', '11111111'],
#   ['leon', 'leon@wizeline.com', '22222222'],
#   ['carlos', 'carlos@wizeline.com', '33333333']
# ]

# with open(csv_file, 'w') as fdesc:
#     csv_writer = csv.DictWriter(fdesc, fieldnames=csv_fields)
#     csv_writer.writeheader()
#     for row in csv_rows:
#         csv_values = dict(zip(csv_fields, row))
#         csv_writer.writerow(csv_values)
