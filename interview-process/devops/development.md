# Programming Skills (~30 min)

### Background questions:
- Known languages
- Experience with languages
- Stuff built

3 levels of complexity:
- algorithms
- software design:
    - patterns
    - abstraction
- software architecture:
    - language selection
    - components
    - paradigms
    - patterns

### IPv4 validator

see engineers/questions/easy/ipv4.md

### CIDR mask convert:
~~~
#Create a function that converts CIDRs numbers to Subnet Mask IP format and viceversa.
#
#Subnet Mask is very similar to an IP address and it's defined by 4 octets with values of the MSB on.
#A CIDR Subnet mask notation defines a subnet (Classless InterDomain Routing) based on the number of bits that are on.


#e.g. 255.255.0.0 must return /16
#16 must return 255.255.0.0 /1 <==> /32 CIDR
#
# 255.0.0.0 ===> 1111 1111.0000 0000.0000 0000.0000 0000 ==> /8
# /10 ===> 1111 1111.1100 0000.0000 0000.0000 0000 ===> 255.192.0.0

# class to convert from cidr to mask and th eother way
class CidrMask
  def cidr_to_mask(x)
    in_int = 0xFF_FF_FF_FF - (2**(32 - x) - 1)
    s = in_int.zero? ? '00000000' : in_int.to_s(16)
    m = s.match(/(.{2})(.{2})(.{2})(.{2})/)
    m.captures.map { |e| e.to_i(16) }.join('.')
  end

  def build_lookup_table
    @lookup_table = (0..32).collect { |i| [i.to_s, cidr_to_mask(i)] }
  end

  def convert(value)
    s_value = value.to_s
    build_lookup_table unless @lookup_table
    @lookup_table.each do |r|
      return r[1] if s_value == r[0]
      return r[0] if s_value == r[1]
    end
    "Invalid value #{value}!"
  end
end

# Tests
cm = CidrMask.new

# Valid
[0, 1, 16, 21, 32].each do |x|
  puts cm.convert(x)
end
# Valid
['0.0.0.0', '128.0.0.0', '255.255.0.0',
 '255.255.248.0', '255.255.255.255'].each do |x|
  puts cm.convert(x)
end
# Invalid
[-1, 33].each do |x|
  puts cm.convert(x)
end
# Invalid
['0.0.0.0.0', '255.255.255', '11.0.0.0'].each do |x|
  puts cm.convert(x)
end
~~~
