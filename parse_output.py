file = "june4_voxl_output.txt"
with open(file) as f:
    for line in f:
        index = line.find('-')	
        if index != -1:
            rssi = line[index+1:index+3]
            print(rssi)
