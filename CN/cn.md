# Computer Networks Interview Handbook (SDE Fresher 5–6 LPA)

---

# 1. What is a Computer Network?

## Definition

A computer network is a collection of interconnected devices that communicate and share data and resources.

### Example

- Internet
- Office LAN
- College Wi-Fi

**Interview Answer:**  
A computer network is a group of connected devices that exchange data using communication protocols.

---

# 2. What is a Protocol?

## Definition

A protocol is a set of rules that defines how data is transmitted between devices.

### Examples

- HTTP
- HTTPS
- FTP
- TCP
- UDP
- SMTP

**Interview Answer:**  
A protocol is a set of communication rules that devices follow while exchanging data.

---

# 3. What is an IP Address?

## Definition

An IP Address is a unique address assigned to every device on a network.

### Types

- IPv4 (32-bit)
- IPv6 (128-bit)

Example:

```
192.168.1.10
```

**Interview Answer:**  
An IP address uniquely identifies a device on a network.

---

# 4. Difference Between IPv4 and IPv6

| IPv4 | IPv6 |
|------|------|
| 32-bit | 128-bit |
| Decimal | Hexadecimal |
| Limited Addresses | Huge Address Space |
| Example: 192.168.1.1 | Example: 2001:db8::1 |

---

# 5. What is MAC Address?

## Definition

A MAC Address is the physical address of a network interface card (NIC).

Example

```
00:1A:2B:3C:4D:5E
```

**Interview Answer:**  
A MAC address uniquely identifies a network device at the Data Link layer.

---

# 6. What is DNS?

## Definition

DNS (Domain Name System) converts a domain name into an IP address.

Example

```
google.com
↓

142.250.xx.xx
```

---

# 7. What is DHCP?

## Definition

DHCP automatically assigns IP addresses to devices on a network.

Without DHCP, IP addresses must be assigned manually.

---

# 8. What is a Port Number?

## Definition

A port identifies a specific application or service running on a device.

Common Ports

| Port | Service |
|------|---------|
| 20/21 | FTP |
| 22 | SSH |
| 23 | Telnet |
| 25 | SMTP |
| 53 | DNS |
| 80 | HTTP |
| 110 | POP3 |
| 143 | IMAP |
| 443 | HTTPS |

---

# 9. What is Bandwidth?

Bandwidth is the maximum amount of data that can be transferred over a network in one second.

Measured in:

- Mbps
- Gbps

---

# 10. What is Latency?

Latency is the time taken for a packet to travel from source to destination.

Lower latency = Better performance.

---

# 11. What is Throughput?

Throughput is the actual amount of data successfully transferred.

---

# 12. What is Packet Switching?

Data is divided into small packets before transmission.

Internet uses packet switching.

---

# 13. What is Circuit Switching?

A dedicated communication path is established before transmission.

Example:

Traditional telephone calls.

---

# 14. OSI Model

| Layer | Name |
|--------|------|
| 7 | Application |
| 6 | Presentation |
| 5 | Session |
| 4 | Transport |
| 3 | Network |
| 2 | Data Link |
| 1 | Physical |

Memory Trick

```
All People Seem To Need Data Processing
```

---

# 15. TCP/IP Model

| Layer |
|-------|
| Application |
| Transport |
| Internet |
| Network Access |

---

# 16. Difference Between OSI and TCP/IP

| OSI | TCP/IP |
|------|---------|
| 7 Layers | 4 Layers |
| Reference Model | Practical Model |
| ISO | DARPA |

---

# 17. TCP vs UDP

| TCP | UDP |
|------|------|
| Connection-Oriented | Connectionless |
| Reliable | Faster |
| Error Checking | No Guarantee |
| Ordered | Unordered |
| Used in HTTP | Used in Video Streaming |

---

# 18. Three-Way Handshake

Steps

```
Client → SYN

Server → SYN + ACK

Client → ACK
```

Connection Established.

---

# 19. Four-Way Handshake

Used for connection termination.

```
FIN

ACK

FIN

ACK
```

---

# 20. What is HTTP?

HTTP is a protocol used for communication between web browsers and web servers.

Default Port:

```
80
```

---

# 21. What is HTTPS?

HTTPS is the secure version of HTTP.

Uses SSL/TLS encryption.

Port

```
443
```

---

# 22. HTTP vs HTTPS

| HTTP | HTTPS |
|------|--------|
| Not Secure | Secure |
| Port 80 | Port 443 |
| No Encryption | Encryption |

---

# 23. What is FTP?

FTP is used for transferring files.

Ports

```
20
21
```

---

# 24. What is SMTP?

SMTP is used to send emails.

Port

```
25
```

---

# 25. What are POP3 and IMAP?

POP3

Downloads emails.

IMAP

Synchronizes emails across devices.

---

# 26. What is NAT?

NAT (Network Address Translation) converts private IP addresses into public IP addresses.

---

# 27. Public IP vs Private IP

| Public | Private |
|---------|----------|
| Internet Accessible | Local Network |
| Globally Unique | Reusable |

---

# 28. What is a Router?

A router connects different networks and forwards packets using IP addresses.

---

# 29. What is a Switch?

A switch connects devices within the same LAN using MAC addresses.

---

# 30. Hub vs Switch

| Hub | Switch |
|------|---------|
| Broadcast | Intelligent |
| Slow | Faster |

---

# 31. What is a Gateway?

A gateway connects two different networks that use different protocols.

---

# 32. What is ARP?

ARP converts an IP address into a MAC address.

---

# 33. What is ICMP?

ICMP is used for error reporting and diagnostics.

Example

```
ping
```

---

# 34. What is Ping?

Ping checks whether another device is reachable on the network.

---

# 35. What is Firewall?

A firewall filters incoming and outgoing network traffic.

---

# 36. What is VPN?

VPN creates a secure encrypted connection over the internet.

---

# 37. What is Proxy Server?

A proxy acts as an intermediary between a client and the internet.

---

# 38. What is DNS Cache?

Stores recently resolved domain names for faster access.

---

# 39. What is Socket?

A socket is an endpoint used for communication between two devices.

```
Socket = IP Address + Port Number
```

---

# 40. What is URL?

URL (Uniform Resource Locator) is the address of a web resource.

Example

```
https://www.google.com
```

---

# 41. What is WWW?

WWW (World Wide Web) is a collection of web pages accessible through the internet.

---

# 42. What is a Subnet Mask?

A subnet mask separates the network portion and host portion of an IP address.

Example

```
255.255.255.0
```

---

# 43. What is a Collision?

A collision occurs when two devices transmit data simultaneously on the same network.

---

# 44. What is Broadcast?

A broadcast sends data to all devices in a network.

---

# 45. What is Unicast?

Data sent from one sender to one receiver.

---

# 46. What is Multicast?

Data sent from one sender to multiple selected receivers.

---

# 47. What is Anycast?

Data is delivered to the nearest available receiver.

---

# 48. What is QoS (Quality of Service)?

QoS prioritizes important network traffic to improve performance.

---

# 49. What is Congestion?

Congestion occurs when network traffic exceeds the network's capacity, causing delays and packet loss.

---

# 50. Difference Between Hub, Switch, and Router

| Device | Works On | Function |
|----------|----------|----------|
| Hub | Physical Layer | Broadcasts data to all devices |
| Switch | Data Link Layer | Sends data using MAC address |
| Router | Network Layer | Routes packets using IP address |

---

# Most Asked HR-Friendly Questions

- What happens when you type google.com in a browser?
- Difference between TCP and UDP.
- Difference between HTTP and HTTPS.
- Explain the OSI Model.
- Explain the TCP/IP Model.
- What is DNS?
- What is DHCP?
- Difference between Router and Switch.
- What is NAT?
- Explain the Three-Way Handshake.
- Difference between IPv4 and IPv6.
- What is a Firewall?
- What is a VPN?
- What is a Socket?
- Difference between Public IP and Private IP.