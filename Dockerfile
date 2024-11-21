FROM quay.io/pypa/manylinux2014_x86_64 AS install_abaqus_stage


# Copy the Abaqus to 
COPY ./AM_SIM_Abaqus_Extend.AllOS/  /opt/AM_SIM_Abaqus_Extend.AllOS/

# install the necessary dependencies to run the StartTUI.sh script
RUN yum install -y ksh redhat-lsb-core expect

WORKDIR /opt/AM_SIM_Abaqus_Extend.AllOS/1

COPY ./install_abaqus.py ./

RUN /opt/python/cp311-cp311/bin/python -m venv .venv \
    && source .venv/bin/activate && python -m pip install pexpect

RUN source .venv/bin/activate && python install_abaqus.py

FROM quay.io/pypa/manylinux2014_x86_64

COPY --from=install_abaqus_stage /opt/SIMULIA /opt/SIMULIA
COPY --from=install_abaqus_stage /opt/DassaultSystemes /opt/DassaultSystemes

