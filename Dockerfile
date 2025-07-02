FROM opensuse/tumbleweed

COPY requirements.txt /

RUN zypper in -y python311 python311-virtualenv git
RUN python3.11 -m venv ts
#COPY *.pem /etc/pki/trust/anchors/
#RUN update-ca-certificates
RUN source /ts/bin/activate && pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt
RUN source /ts/bin/activate && pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org torch
