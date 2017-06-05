FROM python:3

RUN pip install --no-cache-dir \
      numpy \
      matplotlib \
      pandas \
      scipy \
      scikit-learn \
      jupyter \
      pyprind

COPY jupyter_notebook_config.py /root/.jupyter/

COPY notebooks /notebooks

COPY run_jupyter.sh /

EXPOSE 8888

WORKDIR "/notebooks"

CMD ["/run_jupyter.sh", "--allow-root"]
