cp /etc/services services
grep "^#" services > services_comments.txt
grep -v "^#" services > services_wo_comments.txt
grep -v "^#" services | grep "/udp" > services_udp.txt
mv services_wo_comments.txt well-known-ports.txt
sed '1,100 s///-/g' well-known-ports.txt >100-well-known-ports.txt
echo 10-IT-HQ >doc1.txt
echo 20-Accounting-HQ >> doc1.txt
echo 30-Help Desk-Remote >> doc1.txt
echo 40-Sales-HQ >> doc1.txt
echo 10-B.Thomas > doc2.txt
echo 20-J.Foster >> doc2.txt
echo 30-G.Smith >> doc2.txt
echo 40-F.Hudson >> doc2.txt
cat doc1.txt doc2.txt > doc3.txt
awk -F '-' '{print $3}' doc3.txt | sort | uniq > locations.txt
awk -F '-' '{print $3}' doc3.txt | sort | uniq -c > locations-count.txt
sudo find /etc -type f -size -200c | sort > small-etc-files.txt
