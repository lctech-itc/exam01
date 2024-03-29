# exam01

Between Two Seas

## Description

There are three Docker containers defined in the docker-compose.yml file: an HAProxy accepting connetions on port :5000 of the host, and two nginx containers, not exposed to the host.

The person who tried to set this up wanted to have HAProxy in front of the (backend or upstream) nginx containers load-balancing them but something is not working.

## Test

Running "curl localhost:5000" several times returns both "hello there from nginx_0" and "hello there from nginx_1"

```sh
# tool for the test that "Check My Solution" runs.
sh "./check.sh
```

## Other

This server doesn't provide root access (it's not needed).

You can always check your solution locally by running /home/admin/agent/check/.sh (should return "OK"). You can inspect this script to see what the "Check My Solution" button runs. Do not modify check.sh; otherwise the button check will always fail.
