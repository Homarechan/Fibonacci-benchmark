define i64 @"fn_fib"(i64 %".1")
{
fn_fib_entry:
  %".3" = icmp sle i64 %".1", 1
  br i1 %".3", label %"fn_fib_entry.if", label %"fn_fib_entry.endif"

fn_fib_entry.if:
  ret i64 1

fn_fib_entry.endif:
  %".6" = sub i64 %".1", 1
  %".7" = sub i64 %".1", 2
  %".8" = call i64 (i64) @"fn_fib"(i64 %".6")
  %".9" = call i64 (i64) @"fn_fib"(i64 %".7")
  %".10" = add i64 %".8", %".9"
  ret i64 %".10"
}
