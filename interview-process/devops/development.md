# Programming Skills (~30 min)

[codepad.remoteinterview.io](https://codepad.remoteinterview.io/)

### Background questions:

- Known languages
- Experience with languages
- Stuff built

### 3 levels of complexity

#### algorithms

Concerned with the implementation of small elements. e.g. methods internals.

**IPv4 validator**

see engineers/questions/easy/ipv4.md

~~~ruby
# Create a function that validates an IPv4 address,
# function receives an string and returns a boolean
#
# A valid IP address is composed by 4 octets values 0-255
# Valid IP ranges are: 0.0.0.0 to 255.255.255.255

# Extend the function to validate if the IP is public or private.
# For an easier solution, private Ips are 127.x.y.z and 192.168.x.y



# 0.0.0.0  true
# 0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0 false
# 256.0.0.1 false
# 127.0.0.999 false
# a.b.c.d false
# . false
# 1.2.3 false
# 192.168.1.1 true
# 192.168.-0.1 false
# None false
# 127.0.01.999 false
# 123.123 false
# 123.123.123.123.123 false
# 1234124.123123123.1231231.12312321 false

# Example solution (ruby)
def ipv4?(ip)
  (ip.to_s.match(/^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/i)&.captures ||
  [256]).map{ |e| e.to_i < 256 }.inject{ |x, y| x && y }
end

valid = ["0.0.0.0", "192.168.1.1"]
valid.each { |e| puts ipv4?(e) }

invalid = ["0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0",
"256.0.0.1",
"127.0.0.999",
"a.b.c.d",
".",
"1.2.3",
"192.168.-0.1",
"None",
"127.0.01.999",
"123.123",
"123.123.123.123.123",
"1234124.123123123.1231231.12312321"]
invalid.each { |e| puts ipv4?(e) }
~~~

**CIDR mask convert**

~~~ruby
# Create two functions that converts CIDRs numbers to Subnet Mask IP format and vice-versa.
#
# Subnet Mask is very similar to an IP address and it's defined by 4 octets with values of the MSB on.
# A CIDR Subnet mask notation defines a subnet (Classless InterDomain Routing) based on the number of bits that are on.

#e.g. 255.255.0.0 must return /16
#16 must return 255.255.0.0
#
# 255.0.0.0 ===> 1111 1111.0000 0000.0000 0000.0000 0000 ==> /8
# /10 ===> 1111 1111.1100 0000.0000 0000.0000 0000 ===> 255.192.0.0

# Example solution (ruby)

class CidrMask
  def cidr_to_mask(x)
    ('1' * x + '0' * (32 - x)).match(/(.{8})(.{8})(.{8})(.{8})/).captures
                              .map { |e| e.to_i(2) }.join('.')
  end

  def build_lookup_table
    @lookup_table = (1..32).inject({}) do |ha, i|
      ctm = cidr_to_mask(i)
      ha.merge(i.to_s => ctm, ctm => i.to_s)
    end
  end

  def convert(value)
    build_lookup_table unless @lookup_table
    @lookup_table[value.to_s] || "Invalid value #{value}!"
  end
end

# Tests
cm = CidrMask.new

# Valid
[1, 16, 21, 32].each do |x|
  puts cm.convert(x)
end
# Valid
['128.0.0.0', '255.255.0.0',
 '255.255.248.0', '255.255.255.255'].each do |x|
  puts cm.convert(x)
end
# Invalid
[0, -1, 33].each do |x|
  puts cm.convert(x)
end
# Invalid
['0.0.0.0', '0.0.0.0.0', '255.255.255', '11.0.0.0'].each do |x|
  puts cm.convert(x)
end
~~~


#### software design

Concerned with modules and components internals

Topics:
-   patterns
-   components internals
-   abstraction

**Questions:**

TBD

#### software architecture ()

Concerned with the whole system and strategy

Topics:
-   language selection
-   components interactions
-   paradigms
-   frameworks
-   architectural patterns: e.g. MVC, 3-tier layered design

**Questions:**

TBD
