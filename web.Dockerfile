FROM biglion/sixpack-web:v2.5.30

RUN rm -rf /usr/local/lib/python2.7/site-packages/sixpack && mkdir /usr/local/lib/python2.7/site-packages/sixpack
COPY ./sixpack/ /usr/local/lib/python2.7/site-packages/sixpack/
COPY requirements.txt /usr/local/lib/python2.7/site-packages/sixpack/
RUN cd /usr/local/lib/python2.7/site-packages/sixpack/ && pip install -r requirements.txt