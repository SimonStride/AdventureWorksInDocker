# AdventureWorks for Docker

## Mission Statement

Bring AdventureWorks databases to SQL Server docker!

The purpose is to provide a consistent, reusable demo environment leveraging docker for distribution and repeatability.

People following along with TSQL demos have some guarantee of like-for-like setup, irrespective of OS, and without needing to click through SQL Server's installers.

---
## Release Notes

Date | Author | Notes
--|--|--
01 Dec 2018 | Simon Stride | Initial Version, covering AdventureWorks 2012, 2014, 2016, 2017 and 2016_EXT


---

## Examples

Build it and run it for yourself...

    # Pick a folder - "All" or "AW2017"
    cd AW2017
    docker-compose up --build -d

...or just run it...

    docker-compose up

...tear it down...

    docker-compose down

To troubleshoot, you can hop into the /src directory and try...

    cd src
    docker build -t test .
    docker run -p 1001:1433 -e ACCEPT_EULA=Y -e SA_PASSWORD=AdventureWorks1234 test

## Notes

This container image is intended for code demo/teaching purposes only. As such, it is not optimised for security, resiliency, performance, persistence etc.

* SA_PASSWORD - this is the password for the sa account
* Port is mapped in the Docker-Compose file to 1001 - but this could be anything
* The AttachDbs.sql is necessarily repetetive as there as some discrepancies year-on-year with regards to naming of data files - making it difficult to programmatically loop through the source files... for now!

---

## Additional Credits

### DBA From the Cold a.k.a Andrew Pruski
Presented an excellent sesison at our local UG on using SQL Server in Docker Containers, and his blog series helped get things off the ground

### Bob Ward
MS Ignite talk 2018

### Vin Yu
Code samples on Github were instrumental in getting the entrypoint.sh working - specifically, stopping the program from terminating once it was done

### Cathrine Wilhemsen
A day after writing these notes and getting this working, Cathrine released a storming article on creating a SQL Server demo environment in Docker, which would have made putting this togther much easier!

https://www.cathrinewilhelmsen.net/2018/12/02/sql-server-2019-docker-container/

Cathrine is a personal hero of mine for many reasons, not least because I depended heavily on her BIML articles to build my current data warehouse project! Well worth subscribing to her blog.
