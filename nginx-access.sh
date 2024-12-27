top_5_ip_addresses=$(cut -d " " -f 1 nginx-access.log | sort | uniq -c | sort -nr | awk '{print $2, "-", $1, "requests"}' | head -5)
top_5_response_status_codes=$(cut -d " " -f 9 nginx-access.log | sort | uniq -c | sort -nr | awk '{print $2, "-", $1, "requests"}' | head -5)
top_5_requested_paths=$(cut -d " " -f 7 nginx-access.log | sort | uniq -c | sort -nr | awk '{print $2, "-", $1, "requests"}' | head -5)

echo -e "Top 5 IP addresses with the most requests:"
echo -e "$top_5_ip_addresses\n"

echo -e "Top 5 most requested paths:"
echo -e "$top_5_requested_paths\n"

echo -e "Top 5 response status codes:"
echo -e "$top_5_response_status_codes\n"

