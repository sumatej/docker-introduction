FROM python:3

ADD runcmd /test/runcmd
ADD demo1.py /test/demo1.py

ENV DEBUG=1

RUN chmod +x /test/runcmd && chmod +x /test/demo1.py

ENTRYPOINT [ "/test/runcmd", "/usr/bin/python3", "/test/demo1.py" ]
