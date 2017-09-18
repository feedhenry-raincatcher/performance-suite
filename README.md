# Raincatcher Performance Testing

## Getting started

### Starting Mongodb and Redis

```
cd docker-files/
docker compose up
```

### Starting raincatcher-angularjs (core only)

```
cd raincatcher-angularjs
docker build local/raincatcher-angularjs .
docker run --net=host --cpus=2 --memory=2048m --storage-opt size=11G --name raincatcher-ajs local/raincatcher-angularjs

```

Note: This will start the core server in a container that is limited
to 2 cpus and 2 GiB of RAM and 11 GiB of storage (minimum storage of a 
container allowed by docker is 10.47 GiB)

### Running the jmx file from commandline

#### Prerequisites 

1. Install JMeter and add it to the system path
2. Start JMeter GUI and import tests
3. Edit `User Defined Variables` section to alter test settings
4. Disable any listeners before running the test via the commandline

#### Run the following command to run from commandline

```
jmeter -n -t < full path to file>/mobile_sync.jmx -l <path to report folder>/mobile.jtl -e -o <path to report folder>/html
```

Note: report folder and html report folder must exist