defmodule ExSyncTest do
  use ExUnit.Case

  describe "ExSync.Config.beam_dirs/0" do
    test "returns only existing directories" do
      dirs = ExSync.Config.beam_dirs()

      Enum.each(dirs, fn dir ->
        assert File.exists?(dir), "Expected #{dir} to exist"
      end)
    end

    test "includes the project build path" do
      dirs = ExSync.Config.beam_dirs()
      build_path = Mix.Project.build_path()

      assert build_path in dirs
    end
  end

  describe "ExSync.Config.src_dirs/0" do
    test "returns only existing directories" do
      dirs = ExSync.Config.src_dirs()

      Enum.each(dirs, fn dir ->
        assert File.exists?(dir), "Expected #{dir} to exist"
      end)
    end
  end
end
