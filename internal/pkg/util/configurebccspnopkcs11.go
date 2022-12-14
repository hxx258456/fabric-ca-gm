//go:build !pkcs11
// +build !pkcs11

/*
Copyright IBM Corp. All Rights Reserved.

SPDX-License-Identifier: Apache-2.0
*/

package util

import (
	"path"

	log "gitee.com/zhaochuninhefei/zcgolog/zclog"
	"github.com/hxx258456/fabric-gm/bccsp"
	"github.com/hxx258456/fabric-gm/bccsp/factory"
	"github.com/pkg/errors"
)

// ConfigureBCCSP configures BCCSP, using
func ConfigureBCCSP(optsPtr **factory.FactoryOpts, mspDir, homeDir string) error {
	var err error
	if optsPtr == nil {
		return errors.New("nil argument not allowed")
	}
	opts := *optsPtr
	if opts == nil {
		opts = &factory.FactoryOpts{}
	}
	opts.ProviderName = "SW"
	SetProviderName(opts.ProviderName)
	if opts.SwOpts == nil {
		opts.SwOpts = &factory.SwOpts{}
	}
	if opts.SwOpts.HashFamily == "" {
		opts.SwOpts.HashFamily = bccsp.SM3
	}
	if opts.SwOpts.SecLevel == 0 {
		opts.SwOpts.SecLevel = 256
	}
	if opts.SwOpts.FileKeystore == nil {
		opts.SwOpts.FileKeystore = &factory.FileKeystoreOpts{}
	}
	// The mspDir overrides the KeyStorePath; otherwise, if not set, set default
	if mspDir != "" {
		opts.SwOpts.FileKeystore.KeyStorePath = path.Join(mspDir, "keystore")
	} else if opts.SwOpts.FileKeystore.KeyStorePath == "" {
		opts.SwOpts.FileKeystore.KeyStorePath = path.Join("msp", "keystore")
	}
	err = makeFileNamesAbsolute(opts, homeDir)
	if err != nil {
		return errors.WithMessage(err, "Failed to make BCCSP files absolute")
	}
	log.Debugf("Initializing BCCSP: %+v", opts)
	if opts.SwOpts != nil {
		log.Debugf("Initializing BCCSP with software options %+v", opts.SwOpts)
	}
	// TODO 是否需要调用InitFactories?
	// Init the BCCSP factories
	err = factory.InitFactories(opts)
	if err != nil {
		return errors.WithMessage(err, "Failed to initialize BCCSP Factories")
	}
	*optsPtr = opts
	return nil
}
