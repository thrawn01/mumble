## Usage
```bash
$ docker run -d -p 64738:64738 -p 64738:64738/udp thrawn01/mumble:latest
```

### Getting the super-user password
```bash
$ docker logs murmur 2>&1 | grep Password
<W>2014-07-27 01:41:31.256 1 => Password for 'SuperUser' set to '(mAq3hkwnkD'
```

-- Hey, you checked in your mumble password
-- Yes, yes I did
