
    ssh -i ../it-step-instance-key.pem -o StrictHostKeyChecking=no -L 5566:localhost:2375 ubuntu@ec2-54-85-193-187.compute-1.amazonaws.com
    docker -H localhost:5566 build -t ng .
    docker -H localhost:5566 run -d -p80:80 ng

