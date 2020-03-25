FROM nfcore/base
LABEL authors="Marc P. Hoeppner" description="Docker image containing the Pathoscope2 suite"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a

ENV PATH /opt/biobloom/bin:/opt/conda/envs/pathoscope2-2.7/bin:$PATH

