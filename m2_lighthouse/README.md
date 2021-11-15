## M2 Lighthouse

This contains the scripts required to run Lighthouse in the M2 milestone.

It is assumed that users have installed `lighthouse` and `lcli` binaries from
[`kintsugi`](https://github.com/sigp/lighthouse/pull/2768) branch of
Lighthouse.

Instructions:

```bash
git clone git@github.com:sigp/lighthouse.git
git checkout kintsugi
cd lighthouse
make
make install-lcli
```

This will install `lighthouse` and `lcli` in `~/.cargo/bin`. You will need to
ensure this is on your `PATH`.
