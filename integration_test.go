package main_test

import (
	"testing"

	"github.com/sdgrandy/guessnumber/exp"
	. "github.com/smartystreets/goconvey/convey"
)

func TestOptionalString(t *testing.T) {
	Convey("getNine()", t, func() {
		actual := exp.GetNine()
		So(actual, ShouldEqual, 9)
	})
}
