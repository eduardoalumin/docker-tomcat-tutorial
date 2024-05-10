docker build -t landings_cardif:1.0 .
docker tag landings_cardif:1.0 gcr.io/airmedia/landings_cardif:1.0
docker push gcr.io/airmedia/landings_cardif:1.0
gcloud container images list-tags gcr.io/airmedia/landings_cardif
