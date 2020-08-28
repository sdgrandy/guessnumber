package exp

func GetNine() int {
	return 9
}

// func Test(env string) {
// 	var cmd *exec.Cmd
// 	if env == "dev" {
// 		cmd = exec.Command("go", "test", "-v", "./exp/...")
// 	} else if env == "qa" {
// 		cmd = exec.Command("go", "test", "-v", "./exp/...")
// 	} else if env == "master" {
// 		cmd = exec.Command("go", "test", "-v", "./exp/...")
// 	}
// 	cmd.Stdout = os.Stdout
// 	cmd.Run()
// }
