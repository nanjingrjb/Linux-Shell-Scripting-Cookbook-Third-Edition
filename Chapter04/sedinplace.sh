sed  's/\b[0-9]\{3\}\b/NUMBER/g' sed.txt >sedinplace.txt
diff sed.txt sedinplace.txt

