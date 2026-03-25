FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  temp = set()\n\
  while True:\n\
    result = 0\n\
    while n!=0:\n\
      result += (n%10)**2\n\
      n //= 10\n\
    if result == 1:\n\
      return True\n\
    if result in temp:\n\
      return False\n\
    else:\n\
      temp.add(result)\n\
    n = result\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
     "]