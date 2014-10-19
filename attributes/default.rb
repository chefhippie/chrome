#
# Cookbook Name:: chrome
# Attributes:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["chrome"]["packages"] = value_for_platform_family(
  "debian" => %w(
    chromium
  ),
  "ubuntu" => %w(
    chromium
  ),
  "suse" => %w(
    google-chrome-stable
  )
)

default["chrome"]["zypper"]["alias"] = "google-chrome"
default["chrome"]["zypper"]["title"] = "Google Chrome"
default["chrome"]["zypper"]["repo"] = "https://dl.google.com/linux/chrome/rpm/stable/#{node["kernel"]["machine"]}"
default["chrome"]["zypper"]["key"] = "https://dl-ssl.google.com/linux/linux_signing_key.pub"
