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

#### Digging DNS
* Domain Name Concepts
	* Names: abc.def.ghi.com
	* .com is the TLD or top level domain
	* Each subsequent one is a subdomain of the TLD
	* A "hostname" is a DNS name with at least one IP address
	* 'Zones' are collections of related nodes
* DNS Servers
	* DNS is a 'distributed database'
	* Nodes in this system are 'name servers'
	* Authoritative name server has the real facts about the domain
		* Master and slave!
	* Recursive name servers
	* Domain Name registrar (eg. GoDaddy.com) point to primary and secondary authortative name servers

<p><a href="http://commons.wikimedia.org/wiki/File:An_example_of_theoretical_DNS_recursion.svg#mediaviewer/File:An_example_of_theoretical_DNS_recursion.svg"><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/7/77/An_example_of_theoretical_DNS_recursion.svg/1200px-An_example_of_theoretical_DNS_recursion.svg.png" alt="An example of theoretical DNS recursion.svg"></a><br>"<a href="http://commons.wikimedia.org/wiki/File:An_example_of_theoretical_DNS_recursion.svg#mediaviewer/File:An_example_of_theoretical_DNS_recursion.svg">An example of theoretical DNS recursion</a>". Licensed under Public domain via <a href="//commons.wikimedia.org/wiki/">Wikimedia Commons</a>.</p>

#### Dig Command for looking at DNS

* [Understanding the dig command](https://www.madboa.com/geek/dig/)

```
dig brandeis.edu
dig salas.com +trace
```

#### Code

* [Some Examples of dnsruby in action](http://blog.nominet.org.uk/tech/2009/05/19/some-examples-of-dnsruby-in-action/)

* Grab this gem: https://github.com/alexdalitz/dnsruby

#### The Problem

* Worldwide system. Needs to be up 100% of the time
* How do you assign a new name or a new IP address to make sure there are no collisions?
* Need to be able to delegate / decentralize

<p><a href="http://commons.wikimedia.org/wiki/File:Domain_name_space.svg#mediaviewer/File:Domain_name_space.svg"><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Domain_name_space.svg/1200px-Domain_name_space.svg.png" alt="Domain name space.svg"></a><br>"<a href="http://commons.wikimedia.org/wiki/File:Domain_name_space.svg#mediaviewer/File:Domain_name_space.svg">Domain name space</a>". Licensed under Public domain via <a href="//commons.wikimedia.org/wiki/">Wikimedia Commons</a>.</p>

