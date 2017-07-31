* get file on machine from `https://developer.nvidia.com/cuda-downloads`, e.g., with `wget` or `sftp`

```
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64.deb
```

* then follow `https://blog.slavv.com/the-1700-great-deep-learning-box-assembly-setup-and-benchmarks-148c5ebe6415`
* didn't need to install latest Nvidia drivers; saw `GeForce GTX 108...` as name
