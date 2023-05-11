# METADATA
# title: Bad buckets are bad
# description: Bad buckets are bad because they are not good.
# scope: package
# schemas:
#   - input: schema["cloud"]
# custom:
#   avd_id: AVD-TEST-0123
#   severity: CRITICAL
#   short_code: very-bad-misconfig
#   recommended_action: "Fix the s3 bucket"

package user.foobar.ABC001

deny[cause] {
	bucket := input.aws.s3.buckets[_]
	bucket.name.value == "evil"
	cause := bucket.name
}

