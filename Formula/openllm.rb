# Generated by tools/update-brew-tap.py. DO NOT EDIT!
# Please refers to the original template file Formula/openllm.rb.j2
# vim: set ft=ruby:
class Openllm < Formula
  desc "OpenLLM: Operating LLMs in production"
  homepage "https://github.com/bentoml/OpenLLM"
  version "0.3.5"
  license "Apache-2.0"
  head "https://github.com/bentoml/OpenLLM, branch: main"
  url "https://github.com/bentoml/OpenLLM/archive/v0.3.5.tar.gz"
  sha256 "3d334d8415c4d74fb4f52e7a987c87e00c3a0ba91c03d111ab6843823ad646d1"

  on_linux do
    url "https://github.com/bentoml/OpenLLM/releases/download/v0.3.5/openllm-0.3.5-x86_64-unknown-linux-musl.tar.gz"
    sha256 "323449804adb95249ba41289eda483a08e6306dc5d77bd6c742a47787686e189"
  end
  on_macos do
    on_arm do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.3.5/openllm-0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "c4364336159fca11008987335145d8299f4d8c11d436e0650512495e4c3360a6"
    end
    on_intel do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.3.5/openllm-0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "92f71dacb234df0adbe8de542d4847502f7d54f42fb930c19133f7920adf07a0"
    end
  end

  def install
    on_linux do
      bin.install "openllm-0.3.5-x86_64-unknown-linux-musl" => "openllm"
    end
  on_macos do
    on_arm do
      bin.install "openllm-0.3.5-aarch64-apple-darwin" => "openllm"
    end
    on_intel do
      bin.install "openllm-0.3.5-x86_64-apple-darwin" => "openllm"
    end
  end
    ohai "To get started, run: 'openllm --help'"
    ohai "To see supported models, run: 'openllm models'"
  end

  test do
    shell_output "#{bin}/openllm --version"
  end
end
