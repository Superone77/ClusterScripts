#SDK模型下载
from modelscope import snapshot_download
model_dir = snapshot_download('fla-hub/delta_net-1.3B-100B', cache_dir = './')
