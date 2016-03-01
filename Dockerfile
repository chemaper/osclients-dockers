# install osclients & openstackmap

FROM ubuntu
MAINTAINER chema@softlibre.net

WORKDIR /root
RUN apt-get update ; apt-get install -y git python-pip libffi-dev python-dev libssl-dev ; git clone https://github.com/telefonicaid/fiware-skuld.git ; pip install bpython ndg-httpsclient ; pip install -r fiware-skuld/requirements.txt --allow-all-external ; install -d code/utils ; mv fiware-skuld/utils/osclients.py code/utils ; mv fiware-skuld/skuld/openstackmap.py code ; rm -rf fiware-skuld ; touch code/utils/__init__.py
COPY launcher launcher
COPY launcher_cmd launcher_cmd
COPY osclients_faq.txt osclients_faq.txt
ENTRYPOINT ["/root/launcher"]
CMD []
