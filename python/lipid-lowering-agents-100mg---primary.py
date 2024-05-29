# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"63787","system":"gprdproduct"},{"code":"58834","system":"gprdproduct"},{"code":"53822","system":"gprdproduct"},{"code":"6120","system":"gprdproduct"},{"code":"34955","system":"gprdproduct"},{"code":"57348","system":"gprdproduct"},{"code":"55727","system":"gprdproduct"},{"code":"54535","system":"gprdproduct"},{"code":"54992","system":"gprdproduct"},{"code":"61149","system":"gprdproduct"},{"code":"64825","system":"gprdproduct"},{"code":"28","system":"gprdproduct"},{"code":"653","system":"gprdproduct"},{"code":"61360","system":"gprdproduct"},{"code":"59357","system":"gprdproduct"},{"code":"58868","system":"gprdproduct"},{"code":"51134","system":"gprdproduct"},{"code":"52676","system":"gprdproduct"},{"code":"54493","system":"gprdproduct"},{"code":"52625","system":"gprdproduct"},{"code":"34481","system":"gprdproduct"},{"code":"56481","system":"gprdproduct"},{"code":"54655","system":"gprdproduct"},{"code":"61321","system":"gprdproduct"},{"code":"53415","system":"gprdproduct"},{"code":"59331","system":"gprdproduct"},{"code":"59859","system":"gprdproduct"},{"code":"490","system":"gprdproduct"},{"code":"57763","system":"gprdproduct"},{"code":"713","system":"gprdproduct"},{"code":"2718","system":"gprdproduct"},{"code":"34535","system":"gprdproduct"},{"code":"64180","system":"gprdproduct"},{"code":"53908","system":"gprdproduct"},{"code":"56146","system":"gprdproduct"},{"code":"58755","system":"gprdproduct"},{"code":"31930","system":"gprdproduct"},{"code":"60251","system":"gprdproduct"},{"code":"57568","system":"gprdproduct"},{"code":"55032","system":"gprdproduct"},{"code":"51233","system":"gprdproduct"},{"code":"40340","system":"gprdproduct"},{"code":"47948","system":"gprdproduct"},{"code":"57397","system":"gprdproduct"},{"code":"48051","system":"gprdproduct"},{"code":"32921","system":"gprdproduct"},{"code":"51715","system":"gprdproduct"},{"code":"42","system":"gprdproduct"},{"code":"57137","system":"gprdproduct"},{"code":"63140","system":"gprdproduct"},{"code":"51085","system":"gprdproduct"},{"code":"64968","system":"gprdproduct"},{"code":"50925","system":"gprdproduct"},{"code":"54976","system":"gprdproduct"},{"code":"43218","system":"gprdproduct"},{"code":"50236","system":"gprdproduct"},{"code":"61665","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lipid-lowering-agents-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lipid-lowering-agents-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lipid-lowering-agents-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lipid-lowering-agents-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
