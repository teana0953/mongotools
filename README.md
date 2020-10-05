### MongoDB Tools

#### Backup DB

- **Windows**
  - Requirements
    - mongo should install in default path:
      - ex. C:\Program Files\MongoDB\Server\3.6
  - CLI parameters
    - version: MongoDB version
      - default: 3.6
    - ip: MongoDB server ip
      - default: localhost
    - port: MongoDB server port
      - default: 27017
    - db: backup DB name
    - gzip: backup file format
      - default: n
    - output directory: the path where DB will backup at

#### Restore DB

- **Windows**
  - Requirements
    - mongo should install in default path:
      - ex. C:\Program Files\MongoDB\Server\3.6
  - CLI parameters
    - version: MongoDB version
      - default: 3.6
    - ip: MongoDB server ip
      - default: localhost
    - port: MongoDB server port
      - default: 27017
    - db: backup DB name
    - gzip: restore file format is gzip or not
      - default: n
    - from directory: the path where restore used file located



