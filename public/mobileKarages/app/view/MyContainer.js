/*
 * File: app/view/MyContainer.js
 *
 * This file was generated by Sencha Architect version 2.1.0.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Sencha Touch 2.1.x library, under independent license.
 * License of Sencha Architect does not include license for Sencha Touch 2.1.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('MyApp.view.MyContainer', {
    extend: 'Ext.Container',

    config: {
        items: [
            {
                xtype: 'container',
                height: '30%',
                style: 'margin-top:10px',
                layout: {
                    type: 'hbox'
                },
                items: [
                    {
                        xtype: 'image',
                        height: '80%',
                        width: '50%',
                        src: '/images/car1.jpg'
                    },
                    {
                        xtype: 'container',
                        width: '50%',
                        items: [
                            {
                                xtype: 'container',
                                height: 60,
                                html: 'Your Car: 2007 Mercedes E350',
                                style: 'padding-left:5px'
                            },
                            {
                                xtype: 'container',
                                height: 30,
                                html: ''
                            }
                        ]
                    }
                ]
            },
            {
                xtype: 'searchfield',
                style: 'margin-left:6%',
                width: '85%',
                placeHolder: 'Make., Model, Year, Mileage'
            },
            {
                xtype: 'container',
                height: 124,
                ui: '',
                layout: {
                    type: 'hbox'
                },
                items: [
                    {
                        xtype: 'container',
                        height: '70%',
                        margin: '5%',
                        style: 'margin-top:10%;margin-right:10%',
                        width: '30%',
                        items: [
                            {
                                xtype: 'image',
                                height: '100%',
                                width: '100%',
                                src: '/images/repairshop.jpg'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        height: '70%',
                        margin: '5%',
                        style: 'margin-top:10%',
                        width: '30%',
                        items: [
                            {
                                xtype: 'image',
                                height: '100%',
                                style: 'margin-left:40px',
                                width: '100%',
                                src: '/images/estimate.jpg'
                            }
                        ]
                    }
                ]
            },
            {
                xtype: 'container',
                height: 124,
                ui: '',
                layout: {
                    type: 'hbox'
                },
                items: [
                    {
                        xtype: 'container',
                        height: '70%',
                        margin: '5%',
                        style: 'margin-top:10%',
                        width: 277,
                        items: [
                            {
                                xtype: 'image',
                                height: '100%',
                                width: '100%',
                                src: '/images/DIY.jpg'
                            }
                        ]
                    }
                ]
            },
            {
                xtype: 'toolbar',
                docked: 'top',
                items: [
                    {
                        xtype: 'button',
                        height: 45,
                        iconCls: 'home',
                        iconMask: true
                    },
                    {
                        xtype: 'button',
                        docked: 'right',
                        height: 45,
                        iconCls: 'settings',
                        iconMask: true
                    },
                    {
                        xtype: 'container',
                        items: [
                            {
                                xtype: 'image',
                                centered: true,
                                height: 40,
                                width: 40
                            }
                        ]
                    }
                ]
            }
        ]
    }

});