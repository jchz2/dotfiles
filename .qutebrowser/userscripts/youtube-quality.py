#!/usr/bin/env python3
import os
from qutebrowser.api import interceptor

def force_youtube_quality(info: interceptor.Request):
    """Force YouTube to use high-quality video."""
    if 'youtube.com' in info.request_url.host():
        info.request_url.setQuery('quality=hd1080')

interceptor.register(force_youtube_quality)
