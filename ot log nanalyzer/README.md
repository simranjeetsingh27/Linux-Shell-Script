# Assignment8

Create a log processing utility



## Authors

- Simranjeet Singh
## TO DO:

Create a log processing utility, to find

The list of all the IP's along with count
Request Type: GET/POST/PUT/DELETE..
Response Type: 200/204/301/304/503...
Response Type in category: 2xx,3xx,4xx,5xx
Category of responses by sizes: <100, <200, <500, <1000
Category of responses by time: <1, <5, <10, <50 seconds


In addition to that come up with your own other insights

./otLogAnalyzer IP <log_file>
./otLogAnalyzer -t 60m RequestType <log_file>
./otLogAnalyzer -t 2h ResponseType <log_file>
./otLogAnalyzer -t 1d ResponseTypeBySize <log_file>
./otLogAnalyzer -t 1w ResponseTypeByTime <log_file>

Sample log file
```
172.17.0.1 - - [08/Oct/2021:09:11:20 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"
172.17.0.1 - - [08/Oct/2021:09:11:20 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"
172.17.0.1 - - [08/Oct/2021:09:11:20 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"
172.17.0.1 - - [08/Oct/2021:09:11:20 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"
172.17.0.1 - - [08/Oct/2021:09:11:20 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"
172.17.0.1 - - [08/Oct/2021:09:11:21 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"
172.17.0.1 - - [08/Oct/2021:09:11:21 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"
172.17.0.1 - - [08/Oct/2021:09:11:21 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"
172.17.0.1 - - [08/Oct/2021:09:11:21 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36" "-"