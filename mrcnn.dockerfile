FROM tensorflow/tensorflow:1.15.0-py3

RUN mkdir /mrcnn 
WORKDIR /mrcnn
COPY . /mrcnn/

RUN pip install -r requirements.txt && python3 setup.py install && \
    curl -LO https://github.com/matterport/Mask_RCNN/releases/download/v2.0/mask_rcnn_coco.h5 && \
    cd cocoapi*/PythonAPI && python3 setup.py install

