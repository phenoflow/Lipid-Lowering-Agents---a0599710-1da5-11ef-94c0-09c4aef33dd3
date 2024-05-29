# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"2435","system":"gprdproduct"},{"code":"57489","system":"gprdproduct"},{"code":"3089","system":"gprdproduct"},{"code":"53250","system":"gprdproduct"},{"code":"8706","system":"gprdproduct"},{"code":"7551","system":"gprdproduct"},{"code":"1215","system":"gprdproduct"},{"code":"18126","system":"gprdproduct"},{"code":"17813","system":"gprdproduct"},{"code":"66087","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lipid-lowering-agents-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lipid-lowering-agents-1000mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lipid-lowering-agents-1000mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lipid-lowering-agents-1000mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
