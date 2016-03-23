.class public Lcom/bzbs/util/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_14

    .line 39
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Cannot be called from the main thread"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 42
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 43
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v7, "com.android.vending"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_54

    .line 48
    new-instance v2, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/bzbs/util/AdvertisingIdClient$1;)V

    .line 49
    .local v2, "connection":Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.google.android.gms"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v5, v2, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 53
    :try_start_39
    new-instance v1, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v2}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 54
    .local v1, "adInterface":Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;
    new-instance v0, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v8

    invoke-direct {v0, v7, v8}, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_50} :catch_56
    .catchall {:try_start_39 .. :try_end_50} :catchall_58

    .line 59
    .local v0, "adInfo":Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    .line 44
    .end local v0    # "adInfo":Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    .end local v1    # "adInterface":Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;
    .end local v2    # "connection":Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_54
    move-exception v3

    .line 45
    .local v3, "e":Ljava/lang/Exception;
    throw v3

    .line 56
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_56
    move-exception v4

    .line 57
    .local v4, "exception":Ljava/lang/Exception;
    :try_start_57
    throw v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    .line 59
    .end local v4    # "exception":Ljava/lang/Exception;
    :catchall_58
    move-exception v7

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v7

    .line 62
    :cond_5d
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Google Play connection failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
