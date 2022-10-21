FROM python:3.8

USER root
WORKDIR /apps

RUN apt update
RUN pip install jupyterlab
RUN pip install pptx2md

# ADD main.py /apps
# ADD start_jupyter.sh /apps

CMD ["python", "/apps/main.py"]
# CMD ["jupyter", "lab", "--allow-root"]
