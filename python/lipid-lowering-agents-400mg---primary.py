# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"48097","system":"gprdproduct"},{"code":"34353","system":"gprdproduct"},{"code":"54985","system":"gprdproduct"},{"code":"50882","system":"gprdproduct"},{"code":"54435","system":"gprdproduct"},{"code":"48867","system":"gprdproduct"},{"code":"56893","system":"gprdproduct"},{"code":"52098","system":"gprdproduct"},{"code":"745","system":"gprdproduct"},{"code":"34381","system":"gprdproduct"},{"code":"56916","system":"gprdproduct"},{"code":"45219","system":"gprdproduct"},{"code":"50483","system":"gprdproduct"},{"code":"65901","system":"gprdproduct"},{"code":"51876","system":"gprdproduct"},{"code":"62137","system":"gprdproduct"},{"code":"53887","system":"gprdproduct"},{"code":"65181","system":"gprdproduct"},{"code":"53966","system":"gprdproduct"},{"code":"57108","system":"gprdproduct"},{"code":"51","system":"gprdproduct"},{"code":"50670","system":"gprdproduct"},{"code":"52398","system":"gprdproduct"},{"code":"1219","system":"gprdproduct"},{"code":"55034","system":"gprdproduct"},{"code":"55444","system":"gprdproduct"},{"code":"52397","system":"gprdproduct"},{"code":"60511","system":"gprdproduct"},{"code":"51200","system":"gprdproduct"},{"code":"62979","system":"gprdproduct"},{"code":"64307","system":"gprdproduct"},{"code":"34376","system":"gprdproduct"},{"code":"47988","system":"gprdproduct"},{"code":"51676","system":"gprdproduct"},{"code":"64810","system":"gprdproduct"},{"code":"46878","system":"gprdproduct"},{"code":"49061","system":"gprdproduct"},{"code":"50703","system":"gprdproduct"},{"code":"64868","system":"gprdproduct"},{"code":"55912","system":"gprdproduct"},{"code":"52097","system":"gprdproduct"},{"code":"50272","system":"gprdproduct"},{"code":"54240","system":"gprdproduct"},{"code":"49751","system":"gprdproduct"},{"code":"57834","system":"gprdproduct"},{"code":"52460","system":"gprdproduct"},{"code":"50963","system":"gprdproduct"},{"code":"56841","system":"gprdproduct"},{"code":"51166","system":"gprdproduct"},{"code":"59446","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lipid-lowering-agents-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lipid-lowering-agents-400mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lipid-lowering-agents-400mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lipid-lowering-agents-400mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
