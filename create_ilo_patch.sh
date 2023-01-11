docker build . -t hpe_ilo_patch
docker run --name ilo_patcher hpe_ilo_patch
docker cp ilo_patcher:/ilo4_unlock/build ./build^C
docker rm ilo_patcher

