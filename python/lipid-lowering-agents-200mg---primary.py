# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"59508","system":"gprdproduct"},{"code":"62219","system":"gprdproduct"},{"code":"49062","system":"gprdproduct"},{"code":"60464","system":"gprdproduct"},{"code":"36377","system":"gprdproduct"},{"code":"58110","system":"gprdproduct"},{"code":"51622","system":"gprdproduct"},{"code":"39675","system":"gprdproduct"},{"code":"730","system":"gprdproduct"},{"code":"34891","system":"gprdproduct"},{"code":"50754","system":"gprdproduct"},{"code":"63074","system":"gprdproduct"},{"code":"52755","system":"gprdproduct"},{"code":"50564","system":"gprdproduct"},{"code":"25","system":"gprdproduct"},{"code":"49558","system":"gprdproduct"},{"code":"50788","system":"gprdproduct"},{"code":"34312","system":"gprdproduct"},{"code":"52168","system":"gprdproduct"},{"code":"52812","system":"gprdproduct"},{"code":"57296","system":"gprdproduct"},{"code":"52953","system":"gprdproduct"},{"code":"56248","system":"gprdproduct"},{"code":"3159","system":"gprdproduct"},{"code":"55452","system":"gprdproduct"},{"code":"54266","system":"gprdproduct"},{"code":"47935","system":"gprdproduct"},{"code":"56735","system":"gprdproduct"},{"code":"59272","system":"gprdproduct"},{"code":"65679","system":"gprdproduct"},{"code":"34316","system":"gprdproduct"},{"code":"53087","system":"gprdproduct"},{"code":"31783","system":"gprdproduct"},{"code":"51890","system":"gprdproduct"},{"code":"56564","system":"gprdproduct"},{"code":"62429","system":"gprdproduct"},{"code":"64104","system":"gprdproduct"},{"code":"51359","system":"gprdproduct"},{"code":"61134","system":"gprdproduct"},{"code":"58394","system":"gprdproduct"},{"code":"54947","system":"gprdproduct"},{"code":"34366","system":"gprdproduct"},{"code":"51483","system":"gprdproduct"},{"code":"56607","system":"gprdproduct"},{"code":"52257","system":"gprdproduct"},{"code":"53676","system":"gprdproduct"},{"code":"50790","system":"gprdproduct"},{"code":"75","system":"gprdproduct"},{"code":"54607","system":"gprdproduct"},{"code":"52211","system":"gprdproduct"},{"code":"58041","system":"gprdproduct"},{"code":"65193","system":"gprdproduct"},{"code":"58315","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lipid-lowering-agents-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lipid-lowering-agents-200mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lipid-lowering-agents-200mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lipid-lowering-agents-200mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
