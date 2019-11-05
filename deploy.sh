docker build -t noalistic/birdboard-app:latest -t noalistic/birdboard-app:$SHA -f "Dockerfile" .

docker push noalistic/birdboard-app:latest

docker push noalistic/birdboard-app:$SHA

kubectl apply -f k8s
kubectl set image deployments/birdboard-deployment birdboard=papiyinks/birdboard-app:$SHA
