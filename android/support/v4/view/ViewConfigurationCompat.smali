.class public final Landroid/support/v4/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 71
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    .line 77
    :goto_d
    return-void

    .line 72
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1c

    .line 73
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_d

    .line 75
    :cond_1c
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewConfiguration;)Z
    .registers 2

    .prologue
    .line 97
    sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;->a(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
