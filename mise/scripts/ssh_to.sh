#!/bin/bash

pod=$(kubectl get pods | awk '{print $1}' | grep -e $1)

kubectl exec --stdin --tty $pod -- sh
