.class public final Landroid/support/v4/app/AppOpsManagerCompat;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# static fields
.field private static final a:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    .line 84
    new-instance v0, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;

    invoke-direct {v0, v2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;-><init>(Landroid/support/v4/app/AppOpsManagerCompat$1;)V

    sput-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->a:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    .line 88
    :goto_e
    return-void

    .line 86
    :cond_f
    new-instance v0, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-direct {v0, v2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;-><init>(Landroid/support/v4/app/AppOpsManagerCompat$1;)V

    sput-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->a:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 140
    sget-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->a:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    sget-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->a:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
