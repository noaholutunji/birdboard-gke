docker build -t papiyinks/birdboard-app:latest -t papiyinks/birdboard-app:$SHA -f "Dockerfile" .

docker push papiyinks/birdboard-app:latest

docker push papiyinks/birdboard-app:$SHA

kubectl apply -f k8s
kubectl set image deployments/birdboard-deployment birdboard=papiyinks/birdboard-app:$SHA
