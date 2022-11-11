module github.com/hxx258456/fabric-ca-gm

go 1.17

require (
	gitee.com/zhaochuninhefei/zcgolog v0.0.14
	github.com/Knetic/govaluate v3.0.1-0.20171022003610-9aa49832a739+incompatible
	github.com/go-kit/kit v0.10.0
	github.com/golang/protobuf v1.5.2
	github.com/hxx258456/ccgo v0.0.3
	github.com/hxx258456/cfssl-gm v0.0.3
	github.com/hxx258456/fabric-config-gm v0.0.2
	github.com/hxx258456/fabric-gm v0.0.2
	github.com/hyperledger/fabric-amcl v0.0.0-20210603140002-2670f91851c8
	github.com/jmoiron/sqlx v1.3.5
	github.com/kisielk/sqlstruct v0.0.0-20210630145711-dae28ed37023
	github.com/lib/pq v1.10.7
	github.com/mattn/go-sqlite3 v1.14.15
	github.com/mitchellh/mapstructure v1.4.3
	github.com/onsi/ginkgo v1.16.5
	github.com/onsi/gomega v1.18.1
	github.com/op/go-logging v0.0.0-20160315200505-970db520ece7
	github.com/pkg/errors v0.9.1
	github.com/pkg/profile v1.6.0
	github.com/spf13/cobra v1.6.0
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.10.1
	github.com/stretchr/testify v1.8.0
	golang.org/x/crypto v0.1.0
	gopkg.in/asn1-ber.v1 v1.0.0-20181015200546-f715ec2f112d
)

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/fsnotify/fsnotify v1.5.1 // indirect
	github.com/go-logfmt/logfmt v0.5.1 // indirect
	github.com/go-logr/logr v1.2.0 // indirect
	github.com/go-stack/stack v1.8.0 // indirect
	github.com/google/certificate-transparency-go v1.1.4 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/inconshreveable/mousetrap v1.0.1 // indirect
	github.com/jmhodges/clock v1.2.0 // indirect
	github.com/magiconair/properties v1.8.5 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.2-0.20181231171920-c182affec369 // indirect
	github.com/nxadm/tail v1.4.8 // indirect
	github.com/pelletier/go-toml v1.9.4 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/prometheus/client_golang v1.13.0 // indirect
	github.com/prometheus/client_model v0.2.0 // indirect
	github.com/prometheus/common v0.37.0 // indirect
	github.com/prometheus/procfs v0.8.0 // indirect
	github.com/spf13/afero v1.6.0 // indirect
	github.com/spf13/cast v1.4.1 // indirect
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/stretchr/objx v0.4.0 // indirect
	github.com/sykesm/zap-logfmt v0.0.4 // indirect
	github.com/weppos/publicsuffix-go v0.15.1-0.20220329081811-9a40b608a236 // indirect
	github.com/zmap/zcrypto v0.0.0-20220402174210-599ec18ecbac // indirect
	github.com/zmap/zlint v1.1.0 // indirect
	go.uber.org/atomic v1.9.0 // indirect
	go.uber.org/multierr v1.8.0 // indirect
	go.uber.org/zap v1.21.0 // indirect
	golang.org/x/net v0.1.0 // indirect
	golang.org/x/sys v0.1.0 // indirect
	golang.org/x/text v0.4.0 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/klog/v2 v2.80.1 // indirect
)

replace (
	// gitee.com/zhaochuninhefei/cfssl-gm => /home/zhaochun/work/sources/gcbaas/cfssl-gm
	// gitee.com/zhaochuninhefei/fabric-config-gm => /home/zhaochun/work/sources/gcbaas/fabric-config-gm
	// gitee.com/zhaochuninhefei/fabric-gm => /home/zhaochun/work/sources/gcbaas/fabric-gm
	// gitee.com/zhaochuninhefei/fabric-protos-go-gm => /home/zhaochun/work/sources/gcbaas/fabric-protos-go-gm
	// gitee.com/zhaochuninhefei/gmgo => /home/zhaochun/work/sources/gm-zc/gmgo
	github.com/go-kit/kit => github.com/go-kit/kit v0.7.0
	// TODO:需要确认1.3.2版本的ReadInConfig内部将map key转为小写字母是否有影响。
	// 如果有影响，需要将viper版本改回 v0.0.0-20150908122457-1967d93db724 ，但会有一些测试案例编译不过。
	github.com/spf13/viper => github.com/spf13/viper v1.3.2
	// zlint与zcrypto版本必须匹配，否则zlint编译出错
	github.com/zmap/zcrypto => github.com/zmap/zcrypto v0.0.0-20190729165852-9051775e6a2e
	github.com/zmap/zlint => github.com/zmap/zlint v0.0.0-20190806154020-fd021b4cfbeb
)
