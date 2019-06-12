FROM daocloud.io/tingyao/matlab_runtime
MAINTAINER Xin Wen <nclxwen@gmail.com>
WORKDIR /mcr-install
RUN ./install -mode silent -agreeToLicense yes
RUN cd /
RUN rm -Rf /mcr-install
#配置matlab runtime的环境
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/MATLAB/MATLAB_Runtime/v90/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v90/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/java/jre/glnxa64/jre/lib/amd64/native_threads:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/java/jre/glnxa64/jre/lib/amd64/server:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/java/jre/glnxa64/jre/lib/amd64
ENV XAPPLRESDIR=/usr/local/MATLAB/MATLAB_Runtime/v90/X11/app-defaults
ENV MCR_CACHE_VERBOSE=true
ENV MCR_CACHE_ROOT=/tmp
