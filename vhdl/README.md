# Challenge information

There are 5 different implementations, each with increasing difficulty

Structural vs Behavioural VHDL requirements will be specified for each challenge.

Each challenge file will contain a builtin simulation to test your implementation.

Further tests may be performed to validate your solution that are not present in the simulation.

You may create extra components as you see fit to solve the problems.

# DON'T GET SCARED

I know the prospect of learning a new language is scary, however
VHDL is very simple. I swear you can learn the basics in 20min.

# Running the simulations

You will need docker installed, or a working ghdl environment

## Docker

Run the following command in the current working directory and you're good

`docker run -it -v .:/data ghdl/ghdl:6.0.0-dev-gcc-ubuntu-24.04 bash ./data/_dockerbuild.sh`
