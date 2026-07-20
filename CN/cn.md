# Computer Networks Interview Questions (SDE Fresher 5–6 LPA)

---

# 1. What is a Computer Network?

## Definition
A computer network is a collection of interconnected devices that communicate and share data and resources.

### Examples
- Internet
- LAN in an office
- Wi-Fi network

### Interview Answer
A computer network is a group of connected devices that communicate and share data using communication protocols.

---

# 2. What is a Protocol?

## Definition
A protocol is a set of rules that define how data is transmitted between devices.

### Examples
- HTTP
- HTTPS
- FTP
- TCP
- UDP

### Interview Answer
A protocol is a set of communication rules that allows devices to exchange data correctly.

---

# 3. What is the OSI Model?

## Definition
The OSI (Open Systems Interconnection) Model is a 7-layer reference model used to understand network communication.

### Layers
1. Physical
2. Data Link
3. Network
4. Transport
5. Session
6. Presentation
7. Application

### Memory Trick
**Please Do Not Throw Sausage Pizza Away**

---

# 4. What is the TCP/IP Model?

## Layers

1. Network Access
2. Internet
3. Transport
4. Application

### Difference
OSI has 7 layers.
TCP/IP has 4 layers.

---

# 5. Difference Between TCP and UDP

| TCP | UDP |
|------|-----|
| Connection-oriented | Connectionless |
| Reliable | Unreliable |
| Slow | Fast |
| Error checking | Minimal |
| Used in HTTP, FTP | Used in Video Calls, Gaming, DNS |

### Interview Answer
TCP guarantees reliable delivery, whereas UDP provides faster communication without guaranteeing delivery.

---

# 6. What is an IP Address?

## Definition
An IP Address is a unique numerical address assigned to every device connected to a network.

### Types
- IPv4
- IPv6

### Example
192.168.1.10

---

# 7. Difference Between IPv4 and IPv6

| IPv4 | IPv6 |
|-------|-------|
| 32-bit | 128-bit |
| Decimal | Hexadecimal |
| Limited addresses | Huge address space |

---

# 8. What is a MAC Address?

## Definition
A MAC Address is the physical address of a network interface card (NIC).

### Example
00:1A:2B:3C:4D:5E

### Interview Answer
IP identifies the device on the network, while MAC identifies the network interface physically.

---

# 9. What is DNS?

## Definition
DNS (Domain Name System) converts a domain name into an IP address.

### Example

google.com

↓

142.250.xxx.xxx

### Interview Answer
DNS translates human-readable domain names into IP addresses.

---

# 10. What is DHCP?

## Definition
DHCP automatically assigns IP addresses to devices joining a network.

### Example
When your phone connects to Wi-Fi, it automatically receives an IP address.

---

# 11. What is HTTP and HTTPS?

### HTTP
HyperText Transfer Protocol

Port: 80

Not Secure

### HTTPS
HTTP Secure

Port: 443

Encrypted using SSL/TLS

---

# 12. What is FTP?

## Definition
FTP (File Transfer Protocol) is used to transfer files between computers.

### Port
21

---

# 13. What is a Port Number?

## Definition
A port number identifies a specific application or service running on a computer.

### Common Ports

HTTP → 80

HTTPS → 443

FTP → 21

SSH → 22

DNS → 53

SMTP → 25

---

# 14. What is a Router?

## Definition
A router connects different networks and forwards packets based on IP addresses.

### Example
Your home Wi-Fi router connects your local devices to the Internet.

---

# 15. What is a Switch?

## Definition
A switch connects devices within the same LAN and forwards data using MAC addresses.

### Difference

Switch → MAC Address

Router → IP Address

---

# 16. What is a Hub?

## Definition
A hub broadcasts incoming data to every connected device.

### Difference

Hub → Broadcasts to all devices

Switch → Sends only to the destination device

---

# 17. What is NAT?

## Definition
NAT (Network Address Translation) converts private IP addresses into public IP addresses.

### Benefit
Multiple devices can share one public IP address.

---

# 18. What is a Firewall?

## Definition
A firewall monitors and filters incoming and outgoing network traffic based on security rules.

### Purpose
Protects the system from unauthorized access.

---

# 19. What is Packet Switching?

## Definition
Packet Switching breaks data into small packets before transmission.

### Advantages
- Efficient bandwidth usage
- Faster communication
- Reliable transmission

---

# 20. What is Three-Way Handshake?

## Purpose
Establishes a TCP connection.

### Steps

Client → SYN

Server → SYN + ACK

Client → ACK

Connection Established

### Memory Trick

SYN

↓

SYN + ACK

↓

ACK

---

# Frequently Asked Differences

| Question | Answer |
|----------|--------|
| TCP vs UDP | Reliable vs Fast |
| Hub vs Switch | Broadcast vs Intelligent Forwarding |
| Router vs Switch | Different Networks vs Same Network |
| HTTP vs HTTPS | Unsecured vs Secure |
| IPv4 vs IPv6 | 32-bit vs 128-bit |
| MAC vs IP Address | Physical vs Logical Address |
| OSI vs TCP/IP | 7 Layers vs 4 Layers |

---

# Common Port Numbers

| Protocol | Port |
|----------|------|
| HTTP | 80 |
| HTTPS | 443 |
| FTP | 21 |
| SSH | 22 |
| SMTP | 25 |
| DNS | 53 |
| POP3 | 110 |
| IMAP | 143 |

---

# Top Interview One-Liners

- Protocol → Rules for communication.
- IP Address → Logical address of a device.
- MAC Address → Physical address of a device.
- DNS → Converts domain names into IP addresses.
- DHCP → Automatically assigns IP addresses.
- TCP → Reliable communication protocol.
- UDP → Fast communication protocol.
- Router → Connects different networks.
- Switch → Connects devices in the same LAN.
- Firewall → Protects the network from unauthorized access.