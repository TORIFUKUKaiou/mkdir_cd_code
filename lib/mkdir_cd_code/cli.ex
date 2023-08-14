defmodule MkdirCdCode.CLI do
  @spec main(maybe_improper_list) :: nil | :ok | {any, non_neg_integer}
  def main([]) do
    IO.puts("Usage: mkdir_cd_code dir_name")
  end

  def main(args) do
    [dir | _] = args
    :ok = File.mkdir_p(dir)

    if System.find_executable("open") do
      System.cmd("open", ["-a", "Terminal", dir])
    end

    if System.find_executable("code") do
      System.cmd("code", [dir])
    end
  end
end
