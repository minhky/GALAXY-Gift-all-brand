.class Lcom/google/android/gms/internal/zzqp$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzqp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzqp$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqp$zza;-><init>(Lcom/google/android/gms/internal/zzqp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzqp;->a:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/internal/zzqp;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->d:Lcom/google/android/gms/internal/zzrp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqp;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/internal/zzqp;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->d()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzqp;->b(Lcom/google/android/gms/internal/zzqp;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->b(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzrp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->c:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/internal/zzqp;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->c:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqp;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqp;->d:Lcom/google/android/gms/internal/zzrp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/internal/zzqp;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/app/Activity;Lcom/google/android/gms/internal/zzrp;IILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_6

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/internal/zzqp;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_a0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->c:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqp;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqp;->c:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqp;->f()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzqp$zza$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzqp$zza$1;-><init>(Lcom/google/android/gms/internal/zzqp$zza;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzrj$zza;)Lcom/google/android/gms/internal/zzrj;

    goto/16 :goto_6

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/internal/zzqp;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqp;->b(Lcom/google/android/gms/internal/zzqp;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto/16 :goto_6
.end method
