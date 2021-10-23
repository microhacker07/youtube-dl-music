#!/bin/sh

beet fingerprint /downloads

beet import --autotag --group-albums /downloads
