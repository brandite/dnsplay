## DNS: What's in it for you


#### Set up
* We are using Ruby. Make sure you have Ruby and RubyGems installed.
```
ruby -v
ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-darwin13.0]
gem -v
2.2.2
```

#### Some simple concepts
* MAC address: Media Access Controll address
* IP Address: Internet Protocol Address
* Domain name: brandeis.edu
* DNS: Domain Name System

#### The whole thing

<p><a href="http://commons.wikimedia.org/wiki/File:Internet_map_1024.jpg#mediaviewer/File:Internet_map_1024.jpg"><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Internet_map_1024.jpg/1200px-Internet_map_1024.jpg" alt="Internet map 1024.jpg"></a><br>"<a href="http://commons.wikimedia.org/wiki/File:Internet_map_1024.jpg#mediaviewer/File:Internet_map_1024.jpg">Internet map 1024</a>" by <a href="//commons.wikimedia.org/w/index.php?title=Barrett_Lyon&amp;action=edit&amp;redlink=1" class="new" title="Barrett Lyon (page does not exist)">The Opte Project</a> - Originally from the <a href="//en.wikipedia.org/wiki/Main_Page" class="extiw" title="en:Main Page">English Wikipedia</a>; description page is/was <a class="external text" href="http://en.wikipedia.org/wiki/Image:Internet_map_1024.jpg">here</a>.. Licensed under <a href="http://creativecommons.org/licenses/by/2.5" title="Creative Commons Attribution 2.5">CC BY 2.5</a> via <a href="//commons.wikimedia.org/wiki/">Wikimedia Commons</a>.</p>

### Demo

```
ping brandeis.edu
traceroute brandeis.edu

http://map-on-net.com
http://icicle.dylex.net/~ipmap/
```

#### Code
* We are using Ruby
* Grab this gem: https://github.com/alexdalitz/dnsruby

#### The Problem

* Worldwide system. Needs to be up 100% of the time
* How do you assign a new name or a new IP address to make sure there are no collisions?
* Need to be able to delegate / decentralize

<p><a href="http://commons.wikimedia.org/wiki/File:Domain_name_space.svg#mediaviewer/File:Domain_name_space.svg"><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Domain_name_space.svg/1200px-Domain_name_space.svg.png" alt="Domain name space.svg"></a><br>"<a href="http://commons.wikimedia.org/wiki/File:Domain_name_space.svg#mediaviewer/File:Domain_name_space.svg">Domain name space</a>". Licensed under Public domain via <a href="//commons.wikimedia.org/wiki/">Wikimedia Commons</a>.</p>

